<aside class="app-sidebar bg-body-secondary shadow" data-bs-theme="dark">
        <!--begin::Sidebar Brand-->
        <div class="sidebar-brand">
          <!--begin::Brand Link-->
          <a href="./index.html" class="brand-link">
            <!--begin::Brand Image-->
            <img
              src="{{ asset('barista/assets/logo-casa-do-barista.svg') }}"
              alt="AdminLTE Logo"
              class="brand-image opacity-75 shadow"
            />
            <!--end::Brand Image-->
            <!--begin::Brand Text-->
           
            <!--end::Brand Text-->
          </a>
          <!--end::Brand Link-->
        </div>
        <!--end::Sidebar Brand-->
        <!--begin::Sidebar Search-->
        <!--end::Sidebar Search-->
        <!--begin::Sidebar Wrapper-->
        <div class="sidebar-wrapper">
          <nav class="mt-2" aria-label="Main navigation">
            <!--begin::Sidebar Menu-->
            <ul
              class="nav sidebar-menu flex-column"
              data-lte-toggle="treeview"
              data-accordion="false"
              id="navigation"
            >
              <li class="nav-item menu-open">
                <a href=" {{ route('dashboard')}}" class="nav-link active">
                  <i class="nav-icon bi bi-speedometer icone-vazio"></i>
                  <p>
                    Dashboard
                  </p>
                </a>

              <li class="nav-header">PRODUTOS</li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>
                    PRODUTOS
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('admin.produtos.categoria.index')}}" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>CATEGORIAS</p>
                </a>
              </li>

              <li class="nav-header">VENDAS</li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>
                    VENDAS
                  </p>
                </a>
                 
                
              </li>
                 <li class="nav-item">
                    <a href="{{route('admin.vendas.cliente.index')}}" class="nav-link">
                      <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                      <p>
                        CLIENTES
                        
                      </p>
                    </a>
                  </li>
                  
          

              <li class="nav-header">SITE</li>
              <li class="nav-item">
                <a href="{{ route('admin.banner.index') }}" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>BANNER</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('admin.galeria.index')}}" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>
                    GALERIA
                   
                  </p>
                </a>
                <li class="nav-item">
                <a href="{{route('admin.depoimento.index')}}" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>
                    DEPOIMENTOS
                   
                  </p>
                </a>
             
              </li>
              <li class="nav-item">
                <a href="{{route('admin.linhadotempo.index')}}" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>LINHA DO TEMPO</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('admin.newsletter.index')}}" class="nav-link">
                  <i class="nav-icon bi bi-circle-fill icone-vazio"></i>
                  <p>NEWSLETTER</p>
                </a>
              </li>

              
            </ul>
            <!--end::Sidebar Menu-->

            <!-- Docs CTA (bottom of sidebar) -->
            <div class="p-3 mt-3 border-top border-secondary border-opacity-25">
              <a
                href="./docs/introduction.html"
                class="btn btn-sm btn-outline-light w-100 d-flex align-items-center justify-content-center gap-2"
              >
                <i class="bi bi-book" aria-hidden="true"></i>
                View documentation
              </a>
            </div>
          </nav>
        </div>
        <!--end::Sidebar Wrapper-->
      </aside>