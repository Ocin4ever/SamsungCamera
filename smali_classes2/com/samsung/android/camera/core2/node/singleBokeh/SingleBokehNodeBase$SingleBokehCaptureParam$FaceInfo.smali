.class public Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceInfo"
.end annotation


# instance fields
.field public final a:[Landroid/hardware/camera2/params/Face;

.field public final b:[[I

.field public final c:[[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$FaceInfo;-><init>([Landroid/hardware/camera2/params/Face;[[I[[I)V

    return-void
.end method

.method public constructor <init>([Landroid/hardware/camera2/params/Face;[[I[[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$FaceInfo;->a:[Landroid/hardware/camera2/params/Face;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$FaceInfo;->b:[[I

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$FaceInfo;->c:[[I

    return-void
.end method
