.class Lcom/google/ar/core/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/ar/core/InstallActivity;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/s;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ar/core/o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/ar/core/s;->a:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {v1, p1}, Lcom/google/ar/core/InstallActivity;->access$402(Lcom/google/ar/core/InstallActivity;Lcom/google/ar/core/o;)Lcom/google/ar/core/o;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$500(Lcom/google/ar/core/InstallActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Lcom/google/ar/core/h;->a()Lcom/google/ar/core/h;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/ar/core/h;->b:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$600(Lcom/google/ar/core/InstallActivity;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    new-instance v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    invoke-direct {v2}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-static {p1, v2}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    .line 11
    :goto_0
    iput-boolean v1, p0, Lcom/google/ar/core/s;->a:Z

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/google/ar/core/s;->a:Z

    if-eqz v1, :cond_0

    .line 17
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/google/ar/core/s;->a:Z

    .line 19
    iget-object v1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    sget-object v2, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/o;

    invoke-static {v1, v2}, Lcom/google/ar/core/InstallActivity;->access$402(Lcom/google/ar/core/InstallActivity;Lcom/google/ar/core/o;)Lcom/google/ar/core/o;

    .line 20
    instance-of v1, p1, Lcom/google/ar/core/exceptions/UnavailableException;

    .line 21
    iget-object p0, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {p0, p1}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
