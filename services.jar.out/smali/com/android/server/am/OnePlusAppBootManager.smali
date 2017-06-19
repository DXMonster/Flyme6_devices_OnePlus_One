.class public Lcom/android/server/am/OnePlusAppBootManager;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;,
        Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;,
        Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.haha.action.test"

.field private static final APPBOOT_FILE:Ljava/lang/String; = "/data/system/appboot/appboot.xml"

.field private static APPBOOT_VERSION:Ljava/lang/String; = null

.field public static BLACKLIST_ENABLE:Z = false

.field public static DEBUG:Z = false

.field public static DEBUG_BINDER:Z = false

.field private static INSTANCE:Lcom/android/server/am/OnePlusAppBootManager; = null

.field public static IN_USING:Z = false

.field private static final MSG_DELAY_FORCE_STOP_PKG:I = 0x2

.field private static final MSG_PERSIST_APPBOOT_LIST:I = 0x1

.field private static final MSG_TYPE_PKG_ADD:I = 0x17

.field private static final MSG_TYPE_PKG_REINSTALL:I = 0x15

.field private static final MSG_TYPE_PKG_REMOVE:I = 0x16

.field private static final PRELIST_FILE:Ljava/lang/String; = "/system/etc/presetlist.xml"

.field private static final PROP_ALLOW:Ljava/lang/String; = "persist.sys.appboot.allow"

.field private static final PROP_BLACKLIST:Ljava/lang/String; = "persist.sys.appboot.blacklist"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.appboot.debug"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.appboot.using"

.field private static final SPECIAL_FILE:Ljava/lang/String; = "/system/etc/appbootspecial.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field public static final VERSION:I = 0xf56007

.field private static final XML_ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final XML_ATTR_BOOT:Ljava/lang/String; = "boot"

.field private static final XML_ATTR_CALLEE:Ljava/lang/String; = "callee"

.field private static final XML_ATTR_CALLER:Ljava/lang/String; = "caller"

.field private static final XML_ATTR_FLAG:Ljava/lang/String; = "flag"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_APPBOOT:Ljava/lang/String; = "appboot"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_PRELIST:Ljava/lang/String; = "prelist"

.field public static mAppBootSwitch:Z

.field private static mCurrentActivityPkg:Ljava/lang/String;

.field private static mCurrentIME:Ljava/lang/String;

.field private static mCurrentWallPaperPkg:Ljava/lang/String;

.field private static mLastActivityPkg:Ljava/lang/String;

.field private static mPrePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mABILock:Ljava/lang/Object;

.field private mActivityClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field mAppBootThread:Landroid/os/HandlerThread;

.field mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

.field private mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntentClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPresetWhiteListPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-array v0, v3, [I

    const/16 v1, 0x16

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 90
    sput-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 91
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 92
    sput-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    .line 101
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 104
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 105
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 106
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    .line 124
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 1732
    const-string v0, "1"

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 5
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.vending"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    .line 1346
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager$1;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 1400
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1401
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 1403
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager$2;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1506
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 1507
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 207
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 208
    const-string v0, "persist.sys.appboot.using"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 213
    const-string v0, "persist.sys.appboot.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 214
    const-string v0, "persist.sys.appboot.blacklist"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 215
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 216
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_prelist()I

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    .line 221
    return-void
.end method

.method private static WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "xmlStr"    # Ljava/lang/String;

    .prologue
    .line 1615
    if-nez p1, :cond_1

    .line 1616
    const/4 v6, -0x1

    .line 1651
    :cond_0
    :goto_0
    return v6

    .line 1619
    :cond_1
    const/4 v3, 0x0

    .line 1621
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1623
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1624
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1627
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1629
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1630
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    const/4 v6, -0x2

    .line 1645
    if-eqz v3, :cond_0

    .line 1646
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1647
    const/4 v3, 0x0

    goto :goto_0

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1635
    .end local v0    # "ec":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1636
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1637
    .local v5, "pidbuffer":[B
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1638
    const/4 v6, 0x1

    .line 1645
    if-eqz v4, :cond_4

    .line 1646
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1647
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1649
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1650
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ec":Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1640
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pidbuffer":[B
    :catch_2
    move-exception v1

    .line 1641
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException # WriteStringToFile # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1642
    const/4 v6, -0x3

    .line 1645
    if-eqz v3, :cond_0

    .line 1646
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1647
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1649
    :catch_3
    move-exception v0

    .line 1650
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1644
    .end local v0    # "ec":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1645
    :goto_2
    if-eqz v3, :cond_5

    .line 1646
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1647
    const/4 v3, 0x0

    .line 1651
    :cond_5
    :goto_3
    throw v6

    .line 1649
    :catch_4
    move-exception v0

    .line 1650
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1644
    .end local v0    # "ec":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1640
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->forceStopPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->removeAppBootInfo(Ljava/lang/String;)V

    return-void
.end method

.method private dumpInfo()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "# dump # VERSION # 16080903"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # IN_USING # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mAppBootSwitch # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BLACKLIST_ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private dumpPkgMapInfos()V
    .locals 7

    .prologue
    .line 234
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v4

    .line 235
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 236
    const-string v3, "OnePlusAppBootManager"

    const-string v5, " # dump # mPkgMap = null"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v4

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v1, 0x0

    .line 240
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 241
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    add-int/lit8 v1, v1, 0x1

    .line 242
    const-string v3, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "index":I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private forceStopPkg(Ljava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1565
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceStopPkg # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1567
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    .line 1569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1570
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 1592
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :goto_0
    return v2

    .line 1573
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-ne v5, v2, :cond_2

    move v2, v3

    .line 1574
    goto :goto_0

    .line 1576
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1577
    const/4 v2, 0x3

    goto :goto_0

    .line 1579
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1580
    const/4 v2, 0x4

    goto :goto_0

    .line 1582
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1584
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1585
    monitor-exit v3

    move v2, v4

    goto :goto_0

    .line 1586
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1587
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catch_0
    move-exception v1

    .line 1588
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception# forceStopPkg: forceStopPkg error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1592
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 250
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 252
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 253
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :cond_0
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# getAppBootInfo # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 265
    :cond_1
    return-object v0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static final getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 200
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 203
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    return-object v0
.end method

.method private getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    if-nez p1, :cond_1

    .line 394
    const-string v2, "OnePlusAppBootManager"

    const-string v3, "Fatal Exception # getPkgNameFromIntent # intent=null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x0

    .line 404
    :cond_0
    :goto_0
    return-object v1

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 400
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isPackageInPresetWhitelist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1040
    if-nez p1, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return v2

    .line 1044
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1045
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1046
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1047
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# isPackageInPresetWhitelist # whitelist-pkg # pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 189
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    if-eqz v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#cuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cpid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readXml_specialList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1893
    const-string v9, "readXml_specialList"

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/etc/appbootspecial.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1896
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1897
    const-string v9, "readXml_specialList # file don\'t exist!"

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    const/4 v4, 0x0

    .line 1904
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1905
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1906
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1909
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 1910
    .local v7, "type":I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 1911
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1912
    .local v6, "tag":Ljava/lang/String;
    const-string v9, "svcActB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1913
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1914
    .local v8, "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1. svcActB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1915
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1916
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1956
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    if-ne v7, v11, :cond_2

    .line 1962
    if-eqz v5, :cond_14

    .line 1963
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1964
    const/4 v4, 0x0

    .line 1969
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_2
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1970
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1971
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1973
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1974
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1975
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActivityClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1976
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mProviderClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1918
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v9, "svcActW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1919
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1920
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "2. svcActW # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1921
    :cond_6
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1922
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1958
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 1959
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v9, "OnePlusAppBootManager"

    const-string v10, "readXml_specialList # failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1962
    if-eqz v4, :cond_7

    .line 1963
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1964
    const/4 v4, 0x0

    .line 1969
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1970
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1971
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1973
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1974
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1975
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActivityClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1976
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mProviderClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1924
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_8
    :try_start_6
    const-string v9, "svcClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1925
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1926
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3. svcClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1927
    :cond_9
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1928
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1961
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v4, v5

    .line 1962
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v4, :cond_a

    .line 1963
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1964
    const/4 v4, 0x0

    .line 1969
    :cond_a
    :goto_6
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 1970
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mServiceActionBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1971
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mServiceActionWhiteList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1972
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mServiceClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1973
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1974
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1975
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActivityClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1976
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mProviderClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_b
    throw v9

    .line 1930
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_c
    :try_start_8
    const-string v9, "brdClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1931
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1932
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "4. brdClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1933
    :cond_d
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1934
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1936
    .end local v8    # "value":Ljava/lang/String;
    :cond_e
    const-string v9, "brdActW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1937
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1938
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "5. brdActW # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1939
    :cond_f
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1940
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1942
    .end local v8    # "value":Ljava/lang/String;
    :cond_10
    const-string v9, "actClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1943
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1944
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "6. actClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1945
    :cond_11
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1946
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1948
    .end local v8    # "value":Ljava/lang/String;
    :cond_12
    const-string v9, "pvdClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1949
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1950
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7. pvdClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1951
    :cond_13
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1952
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1966
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1967
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_14
    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 1966
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1967
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1966
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1967
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1961
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto/16 :goto_5

    .line 1958
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method private registerGeneralReceiver()V
    .locals 3

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1390
    const-string v1, "OnePlusAppBootManager"

    const-string v2, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :goto_0
    return-void

    .line 1393
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1394
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerPackageReceiver()V
    .locals 3

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1452
    const-string v1, "OnePlusAppBootManager"

    const-string v2, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :goto_0
    return-void

    .line 1455
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1456
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1458
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1460
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeAppBootInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# removeAppBootInfo # pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private schedulePersistAppBootInfo(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 1596
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1599
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "schedulePersistAppBootInfo #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1600
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1601
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "schedulePersistAppBootInfo # hasMessages # MSG_PERSIST_APPBOOT_LIST"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1602
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 1604
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 271
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 273
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 274
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# updateAppBootInfo # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 288
    :cond_0
    return-object v0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    goto :goto_1
.end method

.method private updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "abi"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p2, "callerStr"    # Ljava/lang/String;
    .param p3, "calleeStr"    # Ljava/lang/String;

    .prologue
    .line 1693
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1694
    .local v1, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 1695
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1696
    .local v2, "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1697
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1698
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 1700
    :cond_2
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1705
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1706
    if-eqz v1, :cond_7

    .line 1707
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1708
    .restart local v2    # "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1709
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1710
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_1

    .line 1712
    :cond_6
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1716
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .prologue
    .line 823
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 828
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    .line 830
    .local v1, "pkgFlag":I
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_0

    .line 831
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setDependencyPackageFlag()V

    .line 832
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# addDependencyPackageFlag # go pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 329
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 370
    :cond_1
    :goto_0
    return v1

    .line 332
    :cond_2
    const/4 v1, 0x1

    .line 334
    .local v1, "ret":Z
    if-eqz p1, :cond_6

    .line 335
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 337
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo # aInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 340
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo #2 className ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 345
    :cond_3
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 346
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",aInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 358
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 359
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 362
    :cond_5
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 363
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 366
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_6
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v2, :cond_7

    if-nez v1, :cond_1

    .line 367
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canActivityGo # ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "calllingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v3, 0x1

    .line 301
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 325
    :cond_1
    :goto_0
    return v2

    .line 305
    :cond_2
    const/4 v2, 0x1

    .line 306
    .local v2, "ret":Z
    const/16 v4, 0x2710

    if-le p3, v4, :cond_3

    .line 307
    const/4 v2, 0x0

    .line 310
    :cond_3
    if-eqz v2, :cond_4

    .line 311
    if-eqz p1, :cond_4

    .line 312
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 314
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 315
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 316
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 321
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canInstrumentationGo # className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", calllingPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canProcGo(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 788
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 819
    :cond_1
    :goto_0
    return v2

    .line 792
    :cond_2
    const/4 v2, 0x1

    .line 793
    .local v2, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 794
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 795
    const/4 v2, 0x0

    .line 798
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 799
    const/4 v2, 0x1

    .line 802
    :cond_4
    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 803
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 807
    :cond_5
    const-string v4, "persist.sys.appboot.allow"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 808
    .local v1, "allow":I
    if-ne v1, v3, :cond_8

    .line 809
    const/4 v2, 0x1

    .line 810
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProcGo # pkgName= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # force can GO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 816
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v3, :cond_7

    if-nez v2, :cond_1

    .line 817
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProcGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_8
    if-ne v1, v6, :cond_6

    .line 812
    const/4 v2, 0x0

    .line 813
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProcGo # pkgName= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # force can NOT GO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public canProviderGo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x1

    .line 711
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v2

    .line 714
    :cond_1
    const/4 v1, 0x1

    .line 715
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 716
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 718
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canProviderGo # ret=false, appInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 724
    const/4 v2, 0x0

    goto :goto_0

    .line 727
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 728
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 731
    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProviderGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/16 v5, 0x2710

    const/4 v2, 0x1

    .line 630
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 707
    :cond_1
    :goto_0
    return v1

    .line 634
    :cond_2
    const/4 v1, 0x0

    .line 635
    .local v1, "ret":Z
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 638
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v3, "persist.sys.appboot.allow"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 639
    goto :goto_0

    .line 643
    :cond_3
    if-eqz p2, :cond_6

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 644
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 650
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 651
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 654
    :cond_4
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 655
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=true, info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # white intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_5
    move v1, v2

    .line 657
    goto :goto_0

    .line 673
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_10

    .line 674
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 675
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 676
    const/4 v1, 0x1

    .line 696
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 697
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 703
    :cond_8
    :goto_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_1

    .line 704
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canReceiverGo # ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 678
    const/4 v1, 0x0

    .line 679
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 683
    :cond_b
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ge v3, v5, :cond_c

    .line 684
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 685
    :cond_c
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_d

    .line 686
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 687
    :cond_d
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_f

    .line 688
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v3, v5, :cond_e

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_7

    .line 690
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 693
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 700
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_2
.end method

.method public canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 16
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v13, :cond_0

    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v13, :cond_2

    .line 410
    :cond_0
    const/4 v11, 0x1

    .line 554
    :cond_1
    :goto_0
    return v11

    .line 413
    :cond_2
    const/4 v10, 0x0

    .line 414
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v13, :cond_3

    .line 415
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 418
    :cond_3
    if-nez v10, :cond_4

    .line 419
    const/4 v11, 0x1

    goto :goto_0

    .line 422
    :cond_4
    const/4 v11, 0x0

    .line 423
    .local v11, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 426
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v13, "persist.sys.appboot.allow"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 427
    const/4 v11, 0x1

    goto :goto_0

    .line 431
    :cond_5
    const/4 v5, 0x0

    .line 432
    .local v5, "callerPkg":Ljava/lang/String;
    move-object v4, v10

    .line 433
    .local v4, "calleePkg":Ljava/lang/String;
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_6

    .line 434
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 436
    :cond_6
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " calling "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 437
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    .line 438
    const-string v13, "android"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 446
    :cond_8
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 450
    .local v7, "compName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1e

    .line 451
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 452
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 453
    const/4 v11, 0x1

    .line 454
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pkgName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # white-action"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    .end local v3    # "action":Ljava/lang/String;
    .end local v7    # "compName":Landroid/content/ComponentName;
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 441
    invoke-virtual {v2, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_1

    .line 458
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v7    # "compName":Landroid/content/ComponentName;
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 459
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 460
    const/4 v11, 0x1

    .line 514
    :cond_b
    :goto_2
    if-eqz v11, :cond_c

    .line 515
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 522
    :cond_c
    :goto_3
    if-nez v11, :cond_e

    .line 523
    if-eqz v5, :cond_e

    sget-object v13, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    sget-object v13, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 526
    :cond_d
    const/4 v12, 0x0

    .line 528
    .local v12, "tag":Ljava/lang/String;
    if-eqz v7, :cond_1f

    .line 529
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 534
    :goto_4
    if-eqz p1, :cond_20

    .line 535
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 540
    :goto_5
    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z

    move-result v11

    .line 541
    if-eqz v11, :cond_e

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v14, 0x2

    invoke-static {v13, v14, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 543
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const-wide/16 v14, 0x7530

    invoke-virtual {v13, v8, v14, v15}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 548
    .end local v8    # "msg":Landroid/os/Message;
    .end local v12    # "tag":Ljava/lang/String;
    :cond_e
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v13, :cond_f

    if-nez v11, :cond_1

    .line 549
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # abi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # mCurrentActivityPkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mLastActivityPkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1a

    .line 462
    const/4 v11, 0x0

    .line 463
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_11

    .line 464
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pkgName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # blacklist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 465
    :cond_11
    if-lez p4, :cond_12

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_12

    .line 466
    const/4 v11, 0x1

    .line 467
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pkgName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # blacklist # callingUid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 470
    :cond_12
    if-nez v11, :cond_14

    if-eqz p1, :cond_14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v14

    if-ne v13, v14, :cond_14

    .line 471
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pkgName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # blacklist # proc uid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 472
    :cond_13
    const/4 v11, 0x1

    .line 475
    :cond_14
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 476
    if-eqz v7, :cond_16

    .line 477
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "clz":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, "pkg":Ljava/lang/String;
    if-eqz v9, :cond_18

    sget-object v13, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 480
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_15

    .line 481
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret=true # cur pkg service: r="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 482
    :cond_15
    const/4 v11, 0x1

    .line 490
    .end local v6    # "clz":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_16
    :goto_6
    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 491
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_17

    .line 492
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret=false intent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # black-action"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 493
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 483
    .restart local v6    # "clz":Ljava/lang/String;
    .restart local v9    # "pkg":Ljava/lang/String;
    :cond_18
    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 484
    sget-boolean v13, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v13, :cond_19

    .line 485
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # ret=false r "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " # blackclass"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 486
    :cond_19
    const/4 v11, 0x0

    goto :goto_6

    .line 497
    .end local v6    # "clz":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_1a
    if-nez v11, :cond_1b

    if-lez p4, :cond_1b

    .line 498
    const/16 v13, 0x2710

    move/from16 v0, p4

    if-ge v0, v13, :cond_1c

    .line 499
    const/4 v11, 0x1

    .line 505
    :cond_1b
    :goto_7
    if-nez v11, :cond_b

    if-eqz p1, :cond_b

    .line 506
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v14, 0x2710

    if-ge v13, v14, :cond_1d

    .line 507
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 500
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_1b

    .line 501
    const/4 v11, 0x1

    goto :goto_7

    .line 508
    :cond_1d
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 509
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 519
    :cond_1e
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 531
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_1f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 537
    :cond_20
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5
.end method

.method public filterAppReceivers(Landroid/content/Intent;Ljava/lang/String;IILjava/util/List;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "receivers"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 559
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # callerPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",callingPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",callingUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 565
    :cond_2
    const-string v5, "persist.sys.appboot.allow"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 570
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 571
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 572
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # white intent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_3
    const/4 v2, 0x0

    .line 578
    .local v2, "iIndex":I
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    .line 579
    .local v0, "NT":I
    :cond_4
    :goto_1
    if-ge v2, v0, :cond_0

    .line 580
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 581
    .local v4, "temp":Ljava/lang/Object;
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_5

    .line 582
    add-int/lit8 v2, v2, 0x1

    .line 584
    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 586
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 587
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 589
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v7, :cond_d

    .line 590
    const/16 v5, 0x2710

    if-ge p4, v5, :cond_6

    .line 591
    add-int/lit8 v2, v2, 0x1

    .line 592
    goto :goto_1

    .line 595
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 596
    add-int/lit8 v2, v2, 0x1

    .line 597
    goto :goto_1

    .line 598
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 599
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # forbided blacklist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 608
    :cond_8
    if-eqz p2, :cond_9

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 609
    const-string v5, "android"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 617
    :cond_9
    :goto_2
    invoke-interface {p5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 618
    add-int/lit8 v0, v0, -0x1

    .line 619
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # forbided "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 601
    :cond_a
    if-eqz p2, :cond_b

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 603
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 604
    goto/16 :goto_1

    .line 611
    :cond_c
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 612
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_2

    .line 622
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getAllAppBootModes(I)Ljava/util/List;
    .locals 8
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$AppBootMode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 914
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v4, :cond_0

    move-object v0, v3

    .line 932
    :goto_0
    return-object v0

    .line 918
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v0, "abmList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v4

    .line 921
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 922
    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 925
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 926
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 927
    new-instance v3, Landroid/app/ActivityManager$AppBootMode;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Landroid/app/ActivityManager$AppBootMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 931
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAppBootMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 936
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v1, :cond_0

    .line 937
    const/4 v1, -0x1

    .line 941
    :goto_0
    return v1

    .line 940
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 941
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    goto :goto_0
.end method

.method public getAppBootState()Z
    .locals 1

    .prologue
    .line 976
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    goto :goto_0
.end method

.method getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1657
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v4, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_2

    .line 1660
    :cond_0
    const/4 v4, 0x0

    .line 1689
    .end local v4    # "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v4

    .line 1663
    .restart local v4    # "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1664
    .local v6, "spt":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v10, :cond_5

    .line 1665
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_4

    .line 1666
    aget-object v7, v6, v9

    aget-object v8, v6, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1667
    .local v3, "ret":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1668
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    .end local v3    # "ret":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1685
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1686
    .local v5, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    array-length v7, v6

    if-le v7, v10, :cond_4

    .line 1671
    aget-object v7, v6, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1672
    .restart local v3    # "ret":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1673
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v2, v6, v7

    .line 1675
    .local v2, "last":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1676
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1677
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_4

    .line 1679
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1680
    :cond_8
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1008
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-object v0

    .line 1012
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1017
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1018
    .local v0, "pkgArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 993
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-object v0

    .line 997
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1001
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1002
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerPackageArray # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkgSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1003
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1004
    .local v0, "pkgArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1489
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1493
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1494
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 1495
    if-eqz p2, :cond_1

    .line 1496
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerPackageReceiver()V

    .line 1497
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerGeneralReceiver()V

    .line 1500
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppBootThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 1501
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1502
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    goto :goto_0
.end method

.method public initPackages(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1468
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v3, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, " initPackages # "

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1473
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1474
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, " initPackages # mPkgMap size > 0 , return"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1478
    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1479
    .local v2, "item":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 1480
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 1481
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1484
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v2    # "item":Landroid/content/pm/PackageParser$Package;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_specialList()V

    .line 1485
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_appboot()I

    goto :goto_0
.end method

.method public readXml_appboot()I
    .locals 25

    .prologue
    .line 1780
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v22, :cond_1

    .line 1781
    const/16 v20, -0x4

    .line 1846
    :cond_0
    :goto_0
    return v20

    .line 1783
    :cond_1
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_2

    const-string v22, "# readXml_appboot"

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1784
    :cond_2
    const/16 v20, 0x0

    .line 1785
    .local v20, "ret":I
    new-instance v12, Ljava/io/File;

    const-string v22, "/data/system/appboot/appboot.xml"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_4

    .line 1787
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_3

    const-string v22, "# readXml_appboot # file not exists"

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1788
    :cond_3
    const/16 v20, -0x1

    goto :goto_0

    .line 1790
    :cond_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 1791
    .local v13, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 1792
    .local v7, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v10, 0x0

    .line 1794
    .local v10, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1795
    invoke-virtual {v7, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 1797
    const-string v22, "appboot"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1798
    .local v17, "nlab":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1799
    .local v6, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "version"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 1800
    .local v21, "version":Ljava/lang/String;
    sput-object v21, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    .line 1801
    const-string v22, "switch"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1802
    .local v5, "appbootSwitch":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " readXml_appboot # version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " switch "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1803
    :cond_5
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    :goto_1
    sput-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1804
    const-string v22, "pkg"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1805
    .local v16, "nl":Lorg/w3c/dom/NodeList;
    if-nez v16, :cond_7

    .line 1806
    const-string v22, "OnePlusAppBootManager"

    const-string v23, "# readXml_appboot # error # nl = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/16 v20, -0x2

    goto/16 :goto_0

    .line 1803
    .end local v16    # "nl":Lorg/w3c/dom/NodeList;
    :cond_6
    const/16 v22, 0x1

    goto :goto_1

    .line 1809
    .restart local v16    # "nl":Lorg/w3c/dom/NodeList;
    :cond_7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    .line 1810
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    .line 1811
    .local v18, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .line 1812
    .local v19, "pkgName":Ljava/lang/String;
    const-string v22, "flag"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 1813
    .local v14, "flag":Ljava/lang/String;
    const-string v22, "action"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1815
    .local v4, "actionStr":Ljava/lang/String;
    const-string v22, "caller"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 1816
    .local v9, "callerStr":Ljava/lang/String;
    const-string v22, "callee"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1818
    .local v8, "calleeStr":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # flag "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # action "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # callerStr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # calleeStr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1822
    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1823
    .local v3, "action":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1824
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v8}, Lcom/android/server/am/OnePlusAppBootManager;->updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_a

    .line 1826
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1827
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1838
    :cond_9
    :goto_3
    add-int/lit8 v20, v20, 0x1

    .line 1809
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1828
    :cond_a
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v3, v0, :cond_b

    .line 1829
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1830
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1841
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v3    # "action":I
    .end local v4    # "actionStr":Ljava/lang/String;
    .end local v5    # "appbootSwitch":Ljava/lang/String;
    .end local v6    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "calleeStr":Ljava/lang/String;
    .end local v9    # "callerStr":Ljava/lang/String;
    .end local v14    # "flag":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "nl":Lorg/w3c/dom/NodeList;
    .end local v17    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v18    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1842
    .local v11, "e":Ljava/lang/Exception;
    const-string v22, "OnePlusAppBootManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "# readXml_appboot # parse error ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/16 v20, -0x3

    goto/16 :goto_0

    .line 1831
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .restart local v3    # "action":I
    .restart local v4    # "actionStr":Ljava/lang/String;
    .restart local v5    # "appbootSwitch":Ljava/lang/String;
    .restart local v6    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "calleeStr":Ljava/lang/String;
    .restart local v9    # "callerStr":Ljava/lang/String;
    .restart local v14    # "flag":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v16    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v17    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v18    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v19    # "pkgName":Ljava/lang/String;
    .restart local v21    # "version":Ljava/lang/String;
    :cond_b
    if-nez v3, :cond_9

    .line 1832
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1833
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_3

    .line 1835
    :cond_c
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public readXml_prelist()I
    .locals 25

    .prologue
    .line 1850
    const/16 v19, 0x0

    .line 1851
    .local v19, "ret":I
    new-instance v11, Ljava/io/File;

    const-string v21, "/system/etc/presetlist.xml"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1853
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_0

    const-string v21, "# readXml_prelist # file not exists"

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1854
    :cond_0
    const/16 v21, -0x1

    .line 1887
    :goto_0
    return v21

    .line 1856
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 1857
    .local v12, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 1858
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v9, 0x0

    .line 1860
    .local v9, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 1861
    invoke-virtual {v8, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 1863
    const-string v21, "prelist"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1864
    .local v16, "nlab":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1865
    .local v7, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string v21, "version"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 1866
    .local v20, "version":Ljava/lang/String;
    const-string v21, "switch"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 1867
    .local v6, "appbootSwitch":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " readXml_prelist # version "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " switch "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1869
    :cond_2
    const-string v21, "pkg"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1870
    .local v15, "nl":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    .line 1871
    invoke-interface {v15, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    .line 1872
    .local v17, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string v21, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 1873
    .local v18, "pkgName":Ljava/lang/String;
    const-string v21, "flag"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 1874
    .local v13, "flag":Ljava/lang/String;
    const-string v21, "action"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1876
    .local v5, "action":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " # flag "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " # action "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1878
    :cond_3
    sget-object v21, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v22, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    add-int/lit8 v19, v19, 0x1

    .line 1870
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1882
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "appbootSwitch":Ljava/lang/String;
    .end local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "flag":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "nl":Lorg/w3c/dom/NodeList;
    .end local v16    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v17    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v20    # "version":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1883
    .local v10, "e":Ljava/lang/Exception;
    const-string v21, "OnePlusAppBootManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "# readXml_prelist # parse error ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/16 v21, -0x2

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "appbootSwitch":Ljava/lang/String;
    .restart local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v14    # "i":I
    .restart local v15    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v16    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v20    # "version":Ljava/lang/String;
    :cond_4
    move/from16 v21, v19

    .line 1887
    goto/16 :goto_0
.end method

.method public setAppBootMode(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 945
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v2, :cond_2

    .line 946
    :cond_0
    const/4 v1, 0x0

    .line 972
    :cond_1
    :goto_0
    return v1

    .line 948
    :cond_2
    const/4 v1, 0x0

    .line 949
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 950
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    packed-switch p2, :pswitch_data_0

    .line 959
    const/16 v1, -0xa

    .line 964
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setAppBootMode # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 968
    :cond_3
    if-lez v1, :cond_1

    .line 969
    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    goto :goto_0

    .line 954
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 955
    const/4 v1, 0x1

    .line 956
    goto :goto_1

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAppBootState(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 983
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 986
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setAppBootState # on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 987
    :cond_1
    sput-boolean p1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 989
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    goto :goto_0
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 884
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 885
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setCurrentIME # mCurrentIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 887
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 888
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 889
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 890
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 892
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 895
    if-nez p1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 900
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setCurrentWallpaperPackage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 902
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 903
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 905
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_0
.end method

.method public updateAccesibilityServiceFlag(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 1022
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 1029
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAccesibilityServiceFlag # packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1030
    :cond_2
    if-ne p2, v2, :cond_0

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_0
.end method

.method public updateAppStopInfo(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 839
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v6, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v6, p2, :cond_2

    move v3, v4

    .line 844
    .local v3, "samePid":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 845
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v3, :cond_3

    .line 847
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # samePid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v3    # "samePid":Z
    :cond_2
    move v3, v5

    .line 843
    goto :goto_1

    .line 851
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .restart local v3    # "samePid":Z
    :cond_3
    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 852
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # wallpaper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    .line 857
    .local v1, "action":I
    if-ne v1, v4, :cond_5

    .line 858
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 859
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 863
    :cond_5
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 864
    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 865
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # blacklist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    .line 870
    .local v2, "pkgFlag":I
    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_7

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_7

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_8

    .line 873
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 874
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_8
    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 878
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateBootFlag(Landroid/content/pm/ResolveInfo;I)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "flag"    # I

    .prologue
    .line 758
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const/4 v1, 0x0

    .line 763
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 764
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 765
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 774
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 775
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 776
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 779
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# updateBootFlag # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_4

    .line 767
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 768
    :cond_4
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeXml_appboot(Ljava/util/HashMap;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1735
    .local p1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;>;"
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "writeXml_appboot #"

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1737
    :cond_0
    const/4 v3, 0x0

    .line 1738
    .local v3, "ret":I
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 1739
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 1741
    .local v5, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1742
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1743
    const-string v6, "\n"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1745
    const-string v6, ""

    const-string v7, "appboot"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1746
    const-string v6, ""

    const-string v7, "version"

    sget-object v8, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1747
    const-string v7, ""

    const-string v8, "switch"

    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eqz v6, :cond_2

    const-string v6, "1"

    :goto_0
    invoke-interface {v4, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1748
    const-string v6, "\n"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1750
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1752
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v6, ""

    const-string v7, "pkg"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1753
    const-string v6, ""

    const-string v7, "package"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1754
    const-string v6, ""

    const-string v7, "flag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1755
    const-string v6, ""

    const-string v7, "boot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1756
    const-string v6, ""

    const-string v7, "action"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1757
    const-string v6, ""

    const-string v7, "caller"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSetString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1758
    const-string v6, ""

    const-string v7, "callee"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSetString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1759
    const-string v6, ""

    const-string v7, "pkg"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1760
    const-string v6, "\n"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1762
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "e":Ljava/lang/Exception;
    const/16 v3, -0xb

    .line 1770
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeXml_appboot # Exception # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1773
    :cond_1
    return v3

    .line 1747
    :cond_2
    :try_start_3
    const-string v6, "0"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1762
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1763
    :try_start_5
    const-string v6, ""

    const-string v7, "appboot"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1764
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1767
    const-string v6, "/data/system/appboot/appboot.xml"

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager;->WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    goto :goto_2
.end method
