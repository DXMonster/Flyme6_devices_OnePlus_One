.class public Lcom/android/server/policy/OemPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemPhoneWindowManager$9;,
        Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    }
.end annotation


# static fields
.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field static final DEBUG:Z

.field static final DEBUG_INPUT:Z

.field static final DEBUG_KEYLOCK:Z

.field static final DEBUG_KEYSWAP:Z

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEYS_SWAP:I = 0x1

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xa

.field private static final KEY_ACTION_HOME:I = 0x9

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field static final KEY_OEM_SOURCE:I = -0x6

.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"

.field private static final SHOW_SCREENSHOT_GUIDER_DALAY:I = 0x3e8

.field private static final SHOW_SCREENSHOT_GUIDER_DISABLED_KEY:Ljava/lang/String; = "persist.sys.oem.ssguider"

.field private static final STK_USER_ACTIVITY_ACTION:Ljava/lang/String; = "com.oneplus.intent.action.stk.user_activity"

.field private static final STK_USER_ACTIVITY_ENABLED_ACTION:Ljava/lang/String; = "com.oneplus.intent.action.stk.user_activity_enabled"

.field private static final TAG:Ljava/lang/String; = "OemPhoneWindowManager"

.field private static final TP_EDGE_LIMIT_PATH:Ljava/lang/String; = "/proc/touchpanel/tpedge_limit_enable"

.field protected static mFingerprintEnrolling:Z

.field protected static mForceHomeEnabled:Z

.field protected static mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field private static sEnableSoftwareKeys:Z

.field static sLongPressAppSwitchActive:Z


# instance fields
.field private INCALL_ACTIVITY:Ljava/lang/String;

.field private final mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mAppSwitchKeyConsumed:Z

.field private mAppSwitchKeyDoubleTapPending:Z

.field private mAppSwitchKeyPressed:Z

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

.field private mDoubleTapOnAppSwitchBehavior:I

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mEnableFourPointersScreenShot:Z

.field private mEnableThreePointersScreenShot:Z

.field private mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

.field private mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field private mHomeLongPressRunnable:Ljava/lang/Runnable;

.field protected mInputManager:Lcom/android/server/input/InputManagerService;

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

.field protected mKeysBehavior:I

.field mLock:Ljava/lang/Object;

.field mLockTaskEndDelay:I

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field private final mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field private mNeedToDismissScreenshotGuider:Z

.field private mNeedToNotifyStkUserActivity:Z

.field private mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

.field private mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

.field private mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

.field mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

.field private final mStartBugReportTask:Ljava/lang/Runnable;

.field private mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

.field private mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 87
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 88
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 89
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 110
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 111
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 112
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 115
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 109
    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 136
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    .line 137
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 138
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 140
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 145
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    .line 147
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 157
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 224
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 244
    const-string v0, "com.android.incallui.InCallActivity"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 246
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 266
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeLongPressRunnable:Ljava/lang/Runnable;

    .line 434
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    .line 1826
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasFixedInvertedHWButtonsOrder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 84
    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/OemPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->setScreenshotGuiderDisabled()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/ScreenshotGuider;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method private cancelErrorLog()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1519
    const-string v0, "com.android.systemui"

    .line 1520
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1521
    .local v2, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1522
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-interface {v1, v7, v8, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v6

    .line 1525
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1526
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1527
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 1528
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1530
    :cond_0
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1531
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1533
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1537
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_1
    return-object v7

    .line 1525
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1537
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/high16 v0, 0x40200000    # 2.5f

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 418
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasFixedInvertedHWButtonsOrder()Z
    .locals 2

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.button.inverted.hw.key.order"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasInComingCall()Z
    .locals 4

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 424
    .local v1, "inCallFocused":Z
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 426
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v1, 0x1

    .line 431
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v1
.end method

.method private hideScreenshotGuider()V
    .locals 2

    .prologue
    .line 1783
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "hideScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenshotGuider;->hide()V

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1789
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 1793
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 1794
    return-void
.end method

.method private isScreenshotGuiderDisabled()Z
    .locals 3

    .prologue
    .line 1749
    const-string v0, "disabled"

    const-string v1, "persist.sys.oem.ssguider"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchCameraAction()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 1483
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.KEYGUARD_CAMERA_TRANSITION"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1484
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1486
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .prologue
    .line 1556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1558
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1562
    .local v0, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    .line 1565
    .local v1, "userSetupComplete":Z
    if-nez v1, :cond_0

    .line 1566
    packed-switch p1, :pswitch_data_0

    .line 1612
    :goto_0
    :pswitch_0
    return-void

    .line 1568
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1576
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1584
    :pswitch_2
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1578
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1581
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_0

    .line 1587
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 1590
    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 1593
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_0

    .line 1596
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    goto :goto_0

    .line 1599
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_0

    .line 1602
    :pswitch_a
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_0

    .line 1605
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_0

    .line 1566
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    .line 1576
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private putDeviceToSleep()V
    .locals 4

    .prologue
    .line 1549
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1550
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1553
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 1377
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1380
    .local v8, "resolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1382
    .local v6, "defaultLongPressOnHomeBehavior":I
    const-string v9, "key_home_long_press_action"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1385
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v9, v12, :cond_1

    .line 1387
    :cond_0
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1391
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1393
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string v9, "key_home_double_tap_action"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1396
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v9, v12, :cond_3

    .line 1398
    :cond_2
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1402
    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0060

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1404
    .local v7, "defaultLongPressOnMenuBehavior":I
    const-string v9, "key_menu_long_press_action"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1407
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v9, v12, :cond_5

    .line 1409
    :cond_4
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1413
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0061

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1415
    .local v3, "defaultDoubleTapOnMenuBehavior":I
    const-string v9, "key_menu_double_tap_action"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1418
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v9, v12, :cond_7

    .line 1420
    :cond_6
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1424
    :cond_7
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0062

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1426
    .local v5, "defaultLongPressOnBackBehavior":I
    const-string v9, "key_back_long_press_action"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1429
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v9, :cond_8

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v9, v12, :cond_9

    .line 1431
    :cond_8
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1435
    :cond_9
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0063

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1437
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string v9, "key_back_double_tap_action"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1440
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_a

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v12, :cond_b

    .line 1442
    :cond_a
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1446
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0064

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1448
    .local v4, "defaultLongPressOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_long_press_action"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1451
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v9, :cond_c

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v9, v12, :cond_d

    .line 1453
    :cond_c
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1457
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0065

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1459
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_double_tap_action"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1462
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v9, :cond_e

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v9, v12, :cond_f

    .line 1464
    :cond_e
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1466
    :cond_f
    return-void
.end method

.method private recordErrorLog()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 395
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 399
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 402
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelErrorLog()V

    .line 403
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1541
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1543
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1544
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1545
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private setScreenshotGuiderDisabled()V
    .locals 4

    .prologue
    .line 1753
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "setScreenshotGuiderDisabled was called:"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "setScreenshotGuiderDisabled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    const-string v0, "persist.sys.oem.ssguider"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    return-void
.end method

.method private showScreenshotGuider()V
    .locals 4

    .prologue
    .line 1765
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedScreenshotGuider()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    if-eqz v0, :cond_0

    .line 1767
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "showScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1780
    :cond_0
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1490
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1494
    :goto_0
    return v1

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1499
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 1501
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_1

    .line 1502
    :cond_0
    const/4 v3, 0x0

    .line 1514
    :goto_0
    return v3

    .line 1505
    :cond_1
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1508
    .local v0, "am":Landroid/app/IActivityManager;
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1509
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_2
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1514
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1469
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1470
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1472
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, -0x6

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1475
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1477
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1478
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1479
    return-void
.end method

.method private updateLidSwitchState(I)V
    .locals 4
    .param p1, "lidState"    # I

    .prologue
    .line 1739
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 1740
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLidSwitchState :lidState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lidOpen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1743
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1745
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readLidState()V

    .line 1728
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->updateLidSwitchState(I)V

    .line 1729
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 1730
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v10, 0x0

    .line 297
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 300
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 301
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 302
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v3, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v7, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    .end local v3    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "ThreePointersThread"

    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 311
    .local v5, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 312
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 313
    new-instance v7, Lcom/android/server/policy/OemThreePointersGesturesListener;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 315
    new-instance v7, Lcom/android/server/policy/OemShotScreenHelper;

    invoke-direct {v7}, Lcom/android/server/policy/OemShotScreenHelper;-><init>()V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    .line 316
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/policy/OemShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 317
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 322
    .end local v5    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_1
    const/4 v2, 0x1

    .line 323
    .local v2, "installedOPBugreport":Z
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 325
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v7, "com.oneplus.opbugreport"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    if-eqz v2, :cond_2

    .line 330
    new-instance v4, Landroid/os/HandlerThread;

    const-string v7, "FourPointersThread"

    invoke-direct {v4, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "mRecognize4PointThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 332
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 333
    new-instance v7, Lcom/android/server/policy/OemFourPointersGesturesListener;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/OemFourPointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 335
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    iget-boolean v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemFourPointersGesturesListener;->setOPBugreporttEnable(Z)V

    .line 336
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 340
    .end local v4    # "mRecognize4PointThread":Landroid/os/HandlerThread;
    :cond_2
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 341
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 343
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v7}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 346
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v7, :cond_3

    .line 347
    new-instance v7, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 352
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    .line 358
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedScreenshotGuider()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 362
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 368
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v7, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    .line 371
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_5
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 32
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 677
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "oem.virtual.hw.key"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 680
    const/high16 v28, 0x1000000

    and-int v28, v28, p3

    if-nez v28, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, 0x40

    if-eqz v28, :cond_0

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, -0x41

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    .line 689
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 690
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 691
    .local v14, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v18

    .line 692
    .local v18, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 693
    .local v20, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v21

    .line 694
    .local v21, "source":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v15

    .line 695
    .local v15, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_3

    const/4 v7, 0x1

    .line 696
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v26, 0x1

    .line 697
    .local v26, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 698
    .local v6, "canceled":Z
    and-int/lit16 v0, v9, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_5

    const/16 v16, 0x1

    .line 700
    .local v16, "longPress":Z
    :goto_2
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v28

    if-eqz v28, :cond_6

    const/4 v13, 0x0

    .line 702
    .local v13, "isFromNavbar":Z
    :goto_3
    const/high16 v28, 0x20000000

    and-int v28, v28, p3

    if-eqz v28, :cond_8

    const/4 v12, 0x1

    .line 703
    .local v12, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    const/16 v27, 0x1

    .line 704
    .local v27, "virtualKey":Z
    :goto_5
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v14, v0, :cond_a

    const/4 v5, 0x1

    .line 705
    .local v5, "backKeyCode":Z
    :goto_6
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v14, v0, :cond_b

    const/4 v10, 0x1

    .line 706
    .local v10, "homeKeyCode":Z
    :goto_7
    const/16 v28, 0x52

    move/from16 v0, v28

    if-ne v14, v0, :cond_c

    const/16 v17, 0x1

    .line 707
    .local v17, "menuKeyCode":Z
    :goto_8
    const/16 v28, 0xbb

    move/from16 v0, v28

    if-ne v14, v0, :cond_d

    const/16 v22, 0x1

    .line 708
    .local v22, "switchKeyCode":Z
    :goto_9
    const/16 v28, 0x1a

    move/from16 v0, v28

    if-ne v14, v0, :cond_e

    const/16 v19, 0x1

    .line 710
    .local v19, "powerKeyCode":Z
    :goto_a
    if-eqz p1, :cond_f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 711
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    if-eqz v4, :cond_10

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    .line 713
    .local v24, "type":I
    :goto_c
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_1

    .line 714
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", interactive = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 719
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager$9;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v29, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 740
    :cond_2
    if-eqz v22, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v28

    if-nez v28, :cond_13

    .line 741
    const-wide/16 v28, -0x1

    .line 1124
    :goto_d
    return-wide v28

    .line 695
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "backKeyCode":Z
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v10    # "homeKeyCode":Z
    .end local v12    # "interactive":Z
    .end local v13    # "isFromNavbar":Z
    .end local v16    # "longPress":Z
    .end local v17    # "menuKeyCode":Z
    .end local v19    # "powerKeyCode":Z
    .end local v22    # "switchKeyCode":Z
    .end local v24    # "type":I
    .end local v26    # "up":Z
    .end local v27    # "virtualKey":Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 696
    .restart local v7    # "down":Z
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 698
    .restart local v6    # "canceled":Z
    .restart local v26    # "up":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 700
    .restart local v16    # "longPress":Z
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, 0x40

    if-eqz v28, :cond_7

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 702
    .restart local v13    # "isFromNavbar":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 703
    .restart local v12    # "interactive":Z
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 704
    .restart local v27    # "virtualKey":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 705
    .restart local v5    # "backKeyCode":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 706
    .restart local v10    # "homeKeyCode":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 707
    .restart local v17    # "menuKeyCode":Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 708
    .restart local v22    # "switchKeyCode":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 710
    .restart local v19    # "powerKeyCode":Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 711
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_c

    .line 726
    .restart local v24    # "type":I
    :pswitch_0
    if-nez v10, :cond_11

    if-nez v5, :cond_11

    if-nez v22, :cond_11

    if-eqz v19, :cond_2

    .line 727
    :cond_11
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_12

    .line 728
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_12
    const-wide/16 v28, 0x0

    goto :goto_d

    .line 744
    :cond_13
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v28

    if-eqz v28, :cond_18

    .line 745
    if-eqz v22, :cond_17

    .line 749
    if-eqz v6, :cond_14

    .line 750
    const-wide/16 v28, -0x1

    goto :goto_d

    .line 753
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 754
    const-wide/16 v28, -0x1

    goto :goto_d

    .line 760
    :cond_15
    if-eqz v16, :cond_16

    .line 761
    const/16 v28, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 762
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    .line 763
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 765
    :cond_16
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    if-eqz v28, :cond_17

    .line 766
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    .line 767
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 771
    :cond_17
    if-eqz v10, :cond_18

    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 772
    if-nez v7, :cond_1b

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    :cond_18
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v14, v0, :cond_19

    .line 784
    if-nez v7, :cond_1c

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    :cond_19
    :goto_e
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v28

    if-eqz v28, :cond_5f

    .line 801
    if-eqz v13, :cond_1d

    .line 802
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_1a

    .line 803
    const-string v28, "OemPhoneWindowManager"

    const-string v29, " ++++++++++ interceptKeyBeforeDispatching(): event is from navigation bar, KeyEvent.FLAG_VIRTUAL_HARD_KEY flag present. Calling super method."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_1a
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    goto/16 :goto_d

    .line 774
    :cond_1b
    if-eqz v7, :cond_18

    if-eqz v16, :cond_18

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 776
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 786
    :cond_1c
    if-eqz v7, :cond_19

    if-nez v20, :cond_19

    .line 788
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v28

    if-eqz v28, :cond_19

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 792
    :catch_0
    move-exception v8

    .line 793
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 808
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1d
    if-eqz v10, :cond_31

    .line 809
    if-eqz v7, :cond_29

    .line 810
    if-eqz v4, :cond_23

    .line 811
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_20

    .line 815
    :cond_1e
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_1f

    .line 816
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_1f
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 820
    :cond_20
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    .line 821
    .local v25, "typeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    move/from16 v0, v25

    if-ge v11, v0, :cond_23

    .line 822
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v28, v28, v11

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 824
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_21

    .line 825
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_21
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 821
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 832
    .end local v11    # "i":I
    .end local v25    # "typeCount":I
    :cond_23
    if-nez v20, :cond_27

    .line 833
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 834
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_25

    .line 836
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 897
    :cond_24
    :goto_10
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 840
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 842
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_10

    .line 844
    :cond_27
    if-eqz v16, :cond_24

    .line 845
    if-nez v15, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_24

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_28

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 850
    :cond_28
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 851
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 852
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_10

    .line 857
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 861
    :cond_2a
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 862
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 863
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 864
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 867
    :cond_2b
    if-eqz v6, :cond_2d

    .line 868
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_2c

    .line 869
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring HOME; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_2c
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 877
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v23

    .line 878
    .local v23, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v23, :cond_2f

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 879
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_2e

    .line 880
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_2e
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 886
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_30

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 888
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 894
    :cond_30
    const/16 v28, 0x9

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 895
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 898
    .end local v23    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_31
    if-eqz v17, :cond_42

    .line 899
    if-eqz v4, :cond_34

    .line 900
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_32

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_32

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_34

    .line 903
    :cond_32
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_33

    .line 904
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_33
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 911
    :cond_34
    if-eqz v27, :cond_36

    .line 912
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_35

    .line 913
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 915
    :cond_35
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 917
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 922
    :cond_36
    if-eqz v7, :cond_3c

    .line 923
    if-nez v20, :cond_3a

    .line 924
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 925
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_38

    .line 927
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 929
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 977
    :cond_37
    :goto_11
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 931
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_37

    .line 933
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_11

    .line 935
    :cond_3a
    if-eqz v16, :cond_37

    .line 936
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_37

    .line 938
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3b

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 941
    :cond_3b
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 942
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 943
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_11

    .line 948
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3d

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 952
    :cond_3d
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3e

    .line 954
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 955
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 958
    :cond_3e
    if-eqz v6, :cond_40

    .line 959
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_3f

    .line 960
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring MENU; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_3f
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 966
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_41

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 968
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 971
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 974
    :cond_41
    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 975
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 978
    :cond_42
    if-eqz v5, :cond_50

    .line 979
    if-eqz v27, :cond_44

    .line 980
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_43

    .line 981
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 984
    :cond_43
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 988
    :cond_44
    if-eqz v7, :cond_4a

    .line 989
    if-nez v20, :cond_48

    .line 990
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 991
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_46

    .line 992
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 994
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1042
    :cond_45
    :goto_12
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 996
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_45

    .line 998
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_12

    .line 1000
    :cond_48
    if-eqz v16, :cond_45

    .line 1001
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_45

    .line 1003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_49

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1006
    :cond_49
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1007
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1008
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_12

    .line 1013
    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4b

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1017
    :cond_4b
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4c

    .line 1019
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1020
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1023
    :cond_4c
    if-eqz v6, :cond_4e

    .line 1024
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_4d

    .line 1025
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring BACK; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_4d
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1031
    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_4f

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1033
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1036
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1039
    :cond_4f
    const/16 v28, 0xa

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1040
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1043
    :cond_50
    if-eqz v22, :cond_5f

    .line 1044
    if-eqz v4, :cond_53

    .line 1045
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_51

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_51

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_53

    .line 1049
    :cond_51
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_52

    .line 1050
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_52
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1057
    :cond_53
    if-eqz v7, :cond_59

    .line 1058
    if-nez v20, :cond_57

    .line 1059
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1060
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1061
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_55

    .line 1062
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1064
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1112
    :cond_54
    :goto_13
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1066
    :cond_55
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_54

    .line 1068
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_13

    .line 1070
    :cond_57
    if-eqz v16, :cond_54

    .line 1071
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_54

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_58

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1076
    :cond_58
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1077
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1078
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1079
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_13

    .line 1083
    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5a

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1087
    :cond_5a
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1088
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5b

    .line 1089
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1090
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1093
    :cond_5b
    if-eqz v6, :cond_5d

    .line 1094
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_5c

    .line 1095
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring APP_SWITCH; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_5c
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1101
    :cond_5d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_5e

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1103
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1106
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1109
    :cond_5e
    const/16 v28, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1110
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1118
    :cond_5f
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedScreenshotGuider()Z

    move-result v28

    if-eqz v28, :cond_61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    move/from16 v28, v0

    if-eqz v28, :cond_61

    if-nez v5, :cond_60

    if-nez v10, :cond_60

    if-nez v17, :cond_60

    if-eqz v22, :cond_61

    .line 1120
    :cond_60
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    .line 1124
    :cond_61
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    goto/16 :goto_d

    .line 719
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 26
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 446
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "oem.virtual.hw.key"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 449
    const/high16 v23, 0x1000000

    and-int v23, v23, p2

    if-nez v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, 0x40

    if-eqz v23, :cond_0

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, -0x41

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 458
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 459
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 460
    .local v13, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    .line 461
    .local v19, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    .line 462
    .local v18, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 463
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_2

    const/4 v6, 0x1

    .line 464
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v21, 0x1

    .line 465
    .local v21, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 467
    .local v5, "canceled":Z
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v12, 0x0

    .line 469
    .local v12, "isFromNavbar":Z
    :goto_2
    const/high16 v23, 0x20000000

    and-int v23, v23, p2

    if-eqz v23, :cond_6

    const/4 v11, 0x1

    .line 470
    .local v11, "interactive":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v22, 0x1

    .line 471
    .local v22, "virtualKey":Z
    :goto_4
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v13, v0, :cond_8

    const/4 v4, 0x1

    .line 472
    .local v4, "backKeyCode":Z
    :goto_5
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v13, v0, :cond_9

    const/4 v9, 0x1

    .line 473
    .local v9, "homeKeyCode":Z
    :goto_6
    const/16 v23, 0x52

    move/from16 v0, v23

    if-ne v13, v0, :cond_a

    const/4 v15, 0x1

    .line 474
    .local v15, "menuKeyCode":Z
    :goto_7
    const/16 v23, 0xbb

    move/from16 v0, v23

    if-ne v13, v0, :cond_b

    const/16 v20, 0x1

    .line 475
    .local v20, "switchKeyCode":Z
    :goto_8
    const/16 v23, 0x1a

    move/from16 v0, v23

    if-ne v13, v0, :cond_c

    const/16 v17, 0x1

    .line 476
    .local v17, "powerKeyCode":Z
    :goto_9
    const/16 v23, 0x86

    move/from16 v0, v23

    if-ne v13, v0, :cond_d

    const/4 v8, 0x1

    .line 477
    .local v8, "gestureKeyCode":Z
    :goto_a
    const/16 v23, -0x6

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    .line 479
    .local v16, "oemSource":Z
    :goto_b
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1

    .line 480
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", interactive = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    move/from16 v23, v0

    if-nez v23, :cond_f

    .line 489
    const/16 v23, 0x0

    .line 670
    :goto_c
    return v23

    .line 463
    .end local v4    # "backKeyCode":Z
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v8    # "gestureKeyCode":Z
    .end local v9    # "homeKeyCode":Z
    .end local v11    # "interactive":Z
    .end local v12    # "isFromNavbar":Z
    .end local v15    # "menuKeyCode":Z
    .end local v16    # "oemSource":Z
    .end local v17    # "powerKeyCode":Z
    .end local v20    # "switchKeyCode":Z
    .end local v21    # "up":Z
    .end local v22    # "virtualKey":Z
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 464
    .restart local v6    # "down":Z
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 467
    .restart local v5    # "canceled":Z
    .restart local v21    # "up":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, 0x40

    if-eqz v23, :cond_5

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 469
    .restart local v12    # "isFromNavbar":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 470
    .restart local v11    # "interactive":Z
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 471
    .restart local v22    # "virtualKey":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 472
    .restart local v4    # "backKeyCode":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 473
    .restart local v9    # "homeKeyCode":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 474
    .restart local v15    # "menuKeyCode":Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_8

    .line 475
    .restart local v20    # "switchKeyCode":Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_9

    .line 476
    .restart local v17    # "powerKeyCode":Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_a

    .line 477
    .restart local v8    # "gestureKeyCode":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_b

    .line 497
    .restart local v16    # "oemSource":Z
    :cond_f
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 498
    sget-object v23, Lcom/android/server/policy/OemPhoneWindowManager$9;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v24, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 540
    :cond_10
    :goto_d
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v23, :cond_19

    .line 541
    if-nez v12, :cond_19

    if-nez v9, :cond_11

    if-nez v4, :cond_11

    if-nez v20, :cond_11

    if-eqz v15, :cond_19

    if-nez v16, :cond_19

    .line 542
    :cond_11
    const/16 v23, 0x0

    goto :goto_c

    .line 500
    :pswitch_0
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_10

    .line 501
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 507
    :pswitch_1
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_12

    .line 508
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_12
    const/16 v23, 0x1

    goto :goto_c

    .line 512
    :pswitch_2
    if-nez v12, :cond_10

    if-eqz v9, :cond_10

    .line 513
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_13

    .line 514
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_13
    const/16 v23, 0x0

    goto :goto_c

    .line 520
    :pswitch_3
    if-nez v12, :cond_10

    if-nez v4, :cond_14

    if-nez v9, :cond_14

    if-nez v20, :cond_14

    if-eqz v15, :cond_10

    .line 521
    :cond_14
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_15

    .line 522
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 528
    :pswitch_4
    if-nez v12, :cond_10

    if-nez v4, :cond_17

    if-nez v20, :cond_17

    if-eqz v15, :cond_16

    if-eqz v16, :cond_17

    :cond_16
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v23, :cond_10

    if-eqz v9, :cond_10

    .line 530
    :cond_17
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_18

    .line 531
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 548
    :cond_19
    sparse-switch v13, :sswitch_data_0

    .line 594
    :cond_1a
    :goto_e
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v23

    if-eqz v23, :cond_25

    .line 595
    if-nez v12, :cond_24

    if-nez v6, :cond_24

    .line 596
    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .line 597
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 598
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1b

    .line 599
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1b
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 550
    :sswitch_0
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v13, v0, :cond_1a

    .line 551
    if-eqz v6, :cond_1a

    .line 552
    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_1c

    .line 554
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 557
    :cond_1c
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedOPBugReport()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 559
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->recordErrorLog()V

    goto/16 :goto_e

    .line 571
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    move/from16 v23, v0

    if-nez v23, :cond_1e

    .line 572
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1d

    .line 573
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, ignoring event."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 579
    :cond_1e
    if-nez v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 581
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1f

    .line 582
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 604
    :cond_20
    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 605
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 606
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_21

    .line 607
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_21
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 612
    :cond_22
    if-eqz v20, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    .line 613
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 614
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_23

    .line 615
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_23
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 622
    :cond_24
    if-nez v12, :cond_25

    .line 623
    and-int/lit8 p2, p2, -0x3

    .line 640
    :cond_25
    if-nez v11, :cond_28

    .line 641
    if-nez v12, :cond_2a

    if-nez v9, :cond_26

    if-nez v4, :cond_26

    if-nez v20, :cond_26

    if-eqz v15, :cond_2a

    .line 642
    :cond_26
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_27

    .line 643
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_27
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 647
    :cond_28
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v23

    if-eqz v23, :cond_2a

    .line 648
    if-nez v12, :cond_2a

    if-nez v9, :cond_29

    if-nez v4, :cond_29

    if-nez v20, :cond_29

    if-eqz v15, :cond_2a

    :cond_29
    if-nez v21, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_2a

    if-nez v16, :cond_2a

    .line 650
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 656
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2c

    .line 658
    const/16 v23, 0x18

    move/from16 v0, v23

    if-eq v13, v0, :cond_2b

    const/16 v23, 0x19

    move/from16 v0, v23

    if-eq v13, v0, :cond_2b

    if-nez v4, :cond_2b

    if-nez v9, :cond_2b

    if-nez v15, :cond_2b

    if-nez v20, :cond_2b

    if-eqz v17, :cond_2c

    .line 661
    :cond_2b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 664
    new-instance v10, Landroid/content/Intent;

    const-string v23, "com.oneplus.intent.action.stk.user_activity"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 670
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_2c
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    goto/16 :goto_c

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 548
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 1734
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->updateLidSwitchState(I)V

    .line 1735
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1736
    return-void

    .line 1734
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInputManager(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1722
    return-void
.end method

.method setKeyguardOccludedLw(Z)Z
    .locals 5
    .param p1, "isOccluded"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1699
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1700
    .local v0, "wasOccluded":Z
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1701
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1702
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1703
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1704
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1716
    :goto_0
    return v1

    .line 1707
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1708
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1709
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1710
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1711
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1712
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1716
    goto :goto_0
.end method

.method public setRotationLw(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 1680
    :try_start_0
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPortraitRotation:I

    if-ne p1, v3, :cond_0

    const-string v1, "1"

    .line 1681
    .local v1, "enabled":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/proc/touchpanel/tpedge_limit_enable"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1683
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    .end local v1    # "enabled":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setRotationLw(I)V

    .line 1688
    return-void

    .line 1680
    :cond_0
    :try_start_1
    const-string v1, "0"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "Could not write to file /proc/touchpanel/tpedge_limit_enable"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 382
    :cond_0
    return-void
.end method

.method protected takeScreenshot()V
    .locals 0

    .prologue
    .line 1760
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->showScreenshotGuider()V

    .line 1761
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V

    .line 1762
    return-void
.end method
