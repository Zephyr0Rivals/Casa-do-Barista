<!DOCTYPE html>
<html lang="pt-br">
  
<head>
     @include('partials.admin.head')
</head>
  <!--end::Head-->
  <!--begin::Body-->
  <body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
    <!--begin::App Wrapper-->
    <div class="app-wrapper">

      <!--begin::Header-->
      @include('partials.admin.topo')
      <!--end::Header-->

      <!--begin::Sidebar-->

       @include('partials.admin.menu-lateral')
      <!--end::Sidebar-->

      <!--begin::App Main-->
      <main class="app-main">
        <!--begin::App Content Header-->
        <div class="app-content-header">
          <!--begin::Container-->
          <div class="container-fluid">
            
            <!--BEGIN::ROW-->
            <div class="row">
              <div class="col-sm-6">
                <h1 class="mb-0 fs-3">Área administrativa</h1>
              </div>
              <div class="col-sm-6">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb float-sm-end">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                  </ol>
                </nav>
              </div>
            </div>
            <!--END::ROW-->

          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content Header-->
        <!--begin::App Content-->
        <div class="app-content">
          <!--begin::Container-->
          <div class="container-fluid">
            <!--Begin::Row-->
            @include('admin.dashboard.cards')
            <!--end::row-->
            <!--CONTEÚDO DO DASHBOARD-->
              <main>
                 @yield('content')
              </main>
            <!-- /CONTEÚDO DO DASHBOARD -->

          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content-->
      </main>
      <!--end::App Main-->
      <!--begin::Footer-->
      @include('partials.admin.rodape')
      <!--end::Footer-->
    </div>
    <!--end::App Wrapper-->
    <!--begin::Script-->
    @include('partials.admin.script')
    <!--end::Script-->
  </body>
  <!--end::Body-->
</html>
