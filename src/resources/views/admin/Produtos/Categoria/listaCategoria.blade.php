 <!--begin::App Main-->
      <main class="app-main">
        <!--begin::App Content Header-->
        <div class="app-content-header">
          <!--begin::Container-->
          <div class="container-fluid">
            <!--begin::Row-->
            <div class="row">
              <div class="col-sm-6">
                <h1 class="mb-0 fs-3">Categorias</h1>
              </div>
              <div class="col-sm-6">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb float-sm-end">
                    <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Categoria</li>
                  </ol>
                </nav>
              </div>
            </div>
            <!--end::Row-->
          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content Header-->
          {{-- ALERTA SUCESSO --}}
            @if (session('sucesso'))
              <div class="alert alert-success" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                {{ session('sucesso') }}
                    
               </div>
            @endif

            {{-- ALERTA ERRO --}}
            @if (session('erro'))
              <div class="alert alert-danger" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                {{ session('erro') }}
              </div>
            @endif




        <!--begin::App Content-->
        <div class="app-content">
          <!--begin::Container-->
          <div class="container-fluid">
            <!--begin::Row-->
            <div class="row">
              <div class="col-12">
                <!--begin::Card-->
                <div class="card mb-4">
                  <!--begin::Card Header-->
                  <div class="card-header">
                    <div class="row g-2 align-items-center">
                      <div class="col-12 col-md-4">
                        <h3 class="card-title">Categorias cadastradas</h3>
                      </div>
                      <div class="col-12 col-md-8">
                        <div class="d-flex flex-wrap justify-content-md-end gap-2">
                          <div class="input-group input-group-sm w-auto">
                            <span class="input-group-text">
                              <i class="bi bi-search" aria-hidden="true"></i>
                            </span>
                            <input
                              type="search"
                              id="categoria-search"
                              class="form-control"
                              placeholder="Pesquisar categoria"
                              aria-label="Pesquisar categoria"
                              style="width: 180px"
                            />
                          </div>
                          <select
                            id="categoria-role-filter"
                            class="form-select form-select-sm w-auto"
                            aria-label="Filter by role"
                          >
                            <option value="all" selected>Todos</option>
                            <option value="ATIVOS">Ativos</option>
                            <option value="INATIVOS">Inativos</option>
                            
                          </select>
                          <button
                            type="button"
                            class="btn btn-sm btn-primary"
                            data-bs-toggle="modal"
                            data-bs-target="#modal-add-categoria"
                          >
                            <i class="bi bi-person-plus-fill me-1" aria-hidden="true"> </i>
                            Nova Categoria
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--end::Card Header-->
                  <!--begin::Card Body-->
                  <div class="card-body p-0">
                    <div class="table-responsive">
                      <table class="table table-hover align-middle m-0">
                        <thead>
                          <tr>
                            <th>Código</th>
                            <th>Categoria</th>
                            <th>Status</th>
                            <th class="text-end">Ações</th>
                          </tr>
                        </thead>
                        <tbody>

                        @forelse($listaCategoria as $categoria) 
                          <tr>
                            {{-- ID --}}
                            <td>
                              {{ $categoria->id_categoria }}
                            </td>

                            {{-- CATEGORIA --}}
                            <td>
                              <span class="badge text-bg-success">
                                {{ $categoria->nome_categoria }}
                              </span>
                            </td>

                              {{-- STATUS --}}

                            <td>
                              @if($categoria->status_categoria === 'ATIVO')
                                <span class="badge text-bg-success">
                                    ATIVO
                                </span>
                              @else
                                <span class="badge text-bg-warning">
                                    INATIVO
                                </span>
                              @endif
                            </td>
                           
                            {{-- BOTÕES DE AÇÕES  --}}

                            <td class="text-end">
                              <div class="btn-group btn-group-sm">
                                
                                
                              {{-- EDITAR --}}
                                <button
                                  type="button"
                                  class="btn btn-outline-secondary"
                                  data-bs-toggle="modal" data-bs-target="#modal-edit-categoria"
                                  data-id="""
                                  aria-label="Editar"
                                >
                                  <i class="bi bi-pencil" aria-hidden="true"> </i>
                                </button>
                                <button
                                  type="button"
                                  class="btn btn-outline-danger"
                                  data-bs-toggle="modal"
                                  data-bs-target="#modal-delete-categoria"
                                  aria-label="Deletar"
                                >
                                  <i class="bi bi-trash" aria-hidden="true"> </i>
                                </button>
                              </div>
                            </td>
                          </tr>
                          @empty
                            <tr>
                                <td colspan="5"
                                    class="text-center py-4 text-muted">
                                    
                                    Nenhum categoria cadastrada.
                                </td>
                            </tr>
                        @endforelse
                        </tbody>
                      </table>
                    </div>
                    <!-- /.table-responsive -->
                  </div>
                  <!--end::Card Body-->
                  <!--begin::Card Footer-->
                  <div class="card-footer clearfix">
                    <div class="float-start pt-1 fs-7 text-body-secondary">
                     Número total de categorias:
                     <strong>
                        {{ $listaCategoria->count()}}
                     </strong>
                    </div>
                    <ul class="pagination pagination-sm m-0 float-end">
                      <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous"> &laquo; </a>
                      </li>
                      <li class="page-item active">
                        <a class="page-link" href="#">1</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#">2</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#">3</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#">4</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#">5</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next"> &raquo; </a>
                      </li>
                    </ul>
                  </div>
                  <!--end::Card Footer-->
                </div>
                <!--end::Card-->
              </div>
              <!-- /.col -->
            </div>
            <!--end::Row-->

            {{-- INÍCIO - FORMA DE CADASTRO --}}
            
              <!--begin::Add Categoria Modal-->
              <div
                class="modal fade"
                id="modal-add-categoria"
                tabindex="-1"
                aria-labelledby="modal-add-categoria-label"
                aria-hidden="true">
        
                <div class="modal-dialog">
                  <div class="modal-content">
                    
                    {{-- COMEÇO - DEL FORM DE CADASTRO --}}
                      <form
                        action="{{route('admin.produtos.categoria.store')}}"
                        method="POST"
                        enctype="multipart/form-data">
                        @csrf {{-- Gera token aleatório --}}

                        <div class="modal-header">
                          <h5 class="modal-title" id="modal-add-categoria-label">Adicionar nova categoria</h5>
                          <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close"
                          ></button>
                        </div>

                        <div class="modal-body">
                        
                        
                          <div class="mb-3">
                            <label for="new-categoria-name" class="form-label"> Nome da Categoria </label>
                            <input
                              type="text"
                              class="form-control"
                              id="new-categoria-name"
                              placeholder="Coloque sua nova categoria aqui"
                              required
                              name="nome_categoria"
                            />
                          </div>
                          
                          <div class="mb-3">
                            <label for="new-categoria-role" class="form-label"> Status </label>
                            <select id="new-categoria-role" class="form-select" name="status_categoria">
                              <option value="ATIVO">Ativo</option>
                              <option value="INATIVO">Inativo</option>
                            </select>
                          </div>

                          
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                            Cancelar
                          </button>
                          <button type="submit" class="btn btn-primary">Salvar</button>
                        </div>
                      </form>
                    {{-- FINAL- FORMA DE CADASTRO --}}
                  </div>
                </div>
              </div>
              <!--end::Add categoria Modal-->
              
            {{-- FIM - FORMA DE CADASTRO --}}


            <!--begin::Delete User Modal-->
            <div
              class="modal fade"
              id="modal-delete-user"
              tabindex="-1"
              aria-labelledby="modal-delete-user-label"
              aria-hidden="true"
            >
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modal-delete-user-label">Delete user</h5>
                    <button
                      type="button"
                      class="btn-close"
                      data-bs-dismiss="modal"
                      aria-label="Close"
                    ></button>
                  </div>
                  <div class="modal-body">
                    <p class="mb-0">
                      Are you sure you want to delete this categoria? All content owned by the account
                      will be reassigned to the site administrator. This action cannot be undone.
                    </p>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                      Cancel
                    </button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">
                      Delete categoria
                    </button>
                  </div>
                </div>
              </div>
            </div>
            <!--end::Delete User Modal-->
          </div>
          <!--end::Container-->
        </div>
        <!--end::App Content-->
      </main>
      <!--end::App Main-->