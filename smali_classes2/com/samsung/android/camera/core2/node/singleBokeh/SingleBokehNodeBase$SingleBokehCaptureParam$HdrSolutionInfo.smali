.class public Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$HdrSolutionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HdrSolutionInfo"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$HdrSolutionInfo;-><init>(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$HdrSolutionInfo;->a:I

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam$HdrSolutionInfo;->b:Landroid/graphics/Rect;

    return-void
.end method
